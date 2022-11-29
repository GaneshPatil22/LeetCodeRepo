/*
 * @lc app=leetcode id=380 lang=java
 *
 * [380] Insert Delete GetRandom O(1)
 */

// @lc code=start
class RandomizedSet {
    Map<Integer, Integer> valToPos = new HashMap<>();
    List <Integer> vals = new ArrayList<>();
    Random rand = new Random();
    public RandomizedSet() {
        
    }
    
    public boolean insert(int val) {
        if(valToPos.containsKey(val)) return false;
        vals.add(val);
        valToPos.put(val, vals.size()-1);
        return true;
    }
    
    public boolean remove(int val) {
        if(!valToPos.containsKey(val)) return false;
        int pos = valToPos.remove(val);
        int last = vals.remove(vals.size() - 1);
        if(pos == vals.size()) return true;
        vals.set(pos, last);
        valToPos.put(last, pos);
        return true;
    }
    
    public int getRandom() {
        return vals.get(rand.nextInt(vals.size()));
    }
}

/**
 * Your RandomizedSet object will be instantiated and called as such:
 * RandomizedSet obj = new RandomizedSet();
 * boolean param_1 = obj.insert(val);
 * boolean param_2 = obj.remove(val);
 * int param_3 = obj.getRandom();
 */
// @lc code=end

