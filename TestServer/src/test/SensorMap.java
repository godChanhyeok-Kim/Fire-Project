package test;

import java.util.HashMap;

public class SensorMap {
   HashMap<String, SensorData> sensormap;
   
   public SensorMap() {
      this.sensormap = new HashMap<String, SensorData>();
//      sensormap.put("flame1", new SensorData(10, 22)); //test
      sensormap.put("flame1", new SensorData(10, 22));  // �ϰ��� ��(^3^)
//      sensormap.put("flame1", new SensorData(23, 22)); // �繰�� ��(^3^)   
      sensormap.put("flame1", new SensorData(19, 1)); // 5414 ��(^3^) 

      //������ ���� �� �ְ�.
   }
   
   

   public HashMap<String, SensorData> getSensormap() {
	   
      return sensormap;
   }
   

}
