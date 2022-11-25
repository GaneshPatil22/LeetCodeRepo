/*
 * @lc app=leetcode id=907 lang=java
 *
 * [907] Sum of Subarray Minimums
 */

// @lc code=start
class Solution {
    int mod=(int)1e9+7;
    public int sumSubarrayMins(int[] arr) {
       int n=arr.length;
        long left[]=new long[n];//array containing numbers greater than the current number to its left
        long right[]=new long[n];//array containg numbers greater than the current element on its right
        Stack<int[]>st1=new Stack<>();
        Stack<int[]>st2=new Stack<>();
  //arr 3 1 2 4
  //left 1 2 1 1
//right 1 3 2  1
       //filling left array
        for(int i=0;i<n;i++){
            int cnt=1;
            while(st1.size()>0 && st1.peek()[0]>arr[i]){
                cnt+=st1.pop()[1];
            }
            left[i]=cnt;
            st1.add(new int[]{arr[i],cnt});
        }
        //filling right array
        for(int i=n-1;i>=0;i--){
            int cnt=1;
            while(st2.size()>0 && st2.peek()[0]>=arr[i]){//we are putting equal to sign here as if  duplicates exists it has been ignored in the leftarray so we must iclude its frequency in right subarray
                cnt+=st2.pop()[1];
            }
            right[i]=cnt;
            st2.add(new int[]{arr[i],cnt});
        }
        long ans=0;
        for(int i=0;i<n;i++){
            ans=(ans+left[i]*arr[i]*right[i])%mod;
        }
        return (int)ans;

    }
}
// @lc code=end

