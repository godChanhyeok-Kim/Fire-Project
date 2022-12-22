package main;

public class BaseMap {
	public static int[][] map_arr = { //�츮 ��
			{-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-1,-1,-1,-1,3,-1,-1,-1,-1},
            {-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-1,0,0,4,0,4,0,0,-1},
            {-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-1,-1,-1,5,0,-1,-1,-1,-1},
            {-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-1,0,0,4,0,4,0,0,-1},
            {-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-1,-1,-1,-1,0,-1,-1,-1,-1},
            {-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-1,0,0,4,0,4,0,0,-1},
            {-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-1,-1,-1,-1,0,-1,-1,-1,-1},
            {-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-1,0,0,4,0,4,0,0,-1},
            {-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-1,0,0,-1,0,-1,0,0,-1},
            {-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-1,-1,-1,-1,0,-1,-1,-1,-1},
            {-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-1,0,0,-1,0,-1,0,0,-1},
            {-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-1,0,0,4,0,4,0,0,-1},
            {-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-1,-1,-1,-1,0,-1,-1,-1,-1},
            {-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-1,8,8,-1,0,4,0,0,-1},
            {-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-1,8,8,-1,0,-1,0,0,-1},
            {-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-2,-1,3,-1,-1,0,-1,0,0,-1},
            {-2,-2,-2,-2,-2,-2,-2,-2,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,5,0,0,0,0,-1,0,0,-1},
            {-1,-1,-1,5,-1,-1,-1,-1,-1,0,0,-1,0,0,-1,0,-1,0,-1,0,0,0,0,-1,0,0,-1},
            {-1,0,0,0,0,0,0,0,-1,4,-1,-1,-1,4,-1,4,-1,4,-1,0,0,0,0,4,0,0,-1},
            {-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,-1,-1,-1},
            {-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,-1},
            {-1,-1,3,-1,4,-1,-1,-1,4,-1,4,-1,-1,-1,4,-1,4,-1,-1,-1,4,-1,0,-1,0,0,-1},
            {-1,8,8,-1,0,0,0,0,0,-1,0,0,0,0,0,-1,0,0,0,0,0,-1,0,-1,0,0,-1},
            {-1,8,8,-1,0,0,0,0,0,-1,0,0,0,0,0,-1,0,0,0,0,0,-1,0,4,0,0,-1},
            {-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1}
    };
	

	public static int[][] getMap_arr() {
		return map_arr;
	}
	
	public int getRow() {
	      return this.map_arr.length;
	   }
	   
	   public int getCol() {
	      return this.map_arr[0].length;
	   }

	
}