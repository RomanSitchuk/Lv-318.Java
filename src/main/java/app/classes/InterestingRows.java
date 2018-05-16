package app.classes;

public class InterestingRows {
    public static String execute(String str){

        return findTheMember(Integer.parseInt(str));
    }
    public static String findTheMember(int n) {
        if(n<0){
            return "wrong input value";
        }
        int arr[] = new int[n + 1];
        for (int i = 0; i <= n; i++) {
            if (i == 0) {
                arr[i] = 0;
            } else if (i == 1) {
                arr[i] = 1;
            } else {
                arr[i] = arr[i - 1] + 2 * arr[i - 2];
            }
        }
        return Integer.toString(arr[n]);
    }


}
