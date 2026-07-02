<?php

/**
 * PHP item based filtering
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * @package   PHP item based filtering
 */

class Recommend {
   
    public function similarityDistance($preferences, $person1, $person2)
    {
        $similar = array();// An array to store the common preferences between the two individuals
        $sum = 0;
     // Finding common preferences between person1 and person2
        foreach($preferences[$person1] as $key=>$value)
        {
            if(array_key_exists($key, $preferences[$person2]))
                $similar[$key] = 1;
        }
        // If there are no common preferences, return 0 as the similarity distance
        if(count($similar) == 0)
            return 0;
          // Calculate the sum of squared differences between the preferences of person1 and person2
        foreach($preferences[$person1] as $key=>$value)
        {
            if(array_key_exists($key, $preferences[$person2]))
                $sum = $sum + pow($value - $preferences[$person2][$key], 2);
        }
        // Calculate and return the similarity distance using the Euclidean distance formula
        return  1/(1 + sqrt($sum));     
    }
    
    
    public function matchItems($preferences, $person)
    {
        $score = array();// An array to store the similarity scores between the given person and other individuals
          // Iterate over the preferences of other individuals
            foreach($preferences as $otherPerson=>$values)
            {
                if($otherPerson !== $person) // Exclude the given person from the iteration
                {
                    $sim = $this->similarityDistance($preferences, $person, $otherPerson);// Calculate the similarity distance between the given person and the current other person
                    
                    if($sim > 0) // If the similarity distance is greater than 0 (indicating some similarity)
                        $score[$otherPerson] = $sim; // Store the similarity score in the $score array
                }
            }
        
        array_multisort($score, SORT_DESC); // Sort the similarity scores in descending order
        return $score;
    
    }
    
    
    public function transformPreferences($preferences)
    {
        $result = array();
        
        foreach($preferences as $otherPerson => $values)
        {
            foreach($values as $key => $value)
            {
                $result[$key][$otherPerson] = $value;// Store the preference value under the corresponding item and person in the transformed array
            }
        }
        
        return $result;
    }
    
    
    public function getRecommendations($preferences, $person)
    {
        $total = array();
        $simSums = array();
        $ranks = array();
        $sim = 0;
        
        foreach($preferences as $otherPerson=>$values)
        {
            if($otherPerson != $person)
            {
                $sim = $this->similarityDistance($preferences, $person, $otherPerson);
            }
            
            if($sim > 0) //means 2 people have similar preference
            {
                foreach($preferences[$otherPerson] as $key=>$value)
                {
                    if(!array_key_exists($key, $preferences[$person]))
                    {
                        if(!array_key_exists($key, $total)) {
                            $total[$key] = 0;
                        }
                        $total[$key] += $preferences[$otherPerson][$key] * $sim;
                        
                        if(!array_key_exists($key, $simSums)) {
                            $simSums[$key] = 0;
                        }
                        $simSums[$key] += $sim;
                    }
                }
                
            }
        }

        foreach($total as $key=>$value)
        {
            $ranks[$key] = $value / $simSums[$key];
        }
        
    array_multisort($ranks, SORT_DESC);    
    return $ranks;
        
    }
   
}

?>