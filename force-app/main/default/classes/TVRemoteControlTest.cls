@isTest
class TVRemoteControlTest {
@isTest static void testVolumeIncrease() {
TVRemoteControl rc = new TVRemoteControl(10);
Integer newVolume = rc.increaseVolume(15);
System.assertEquals(25, newVolume);
}
@isTest static void testVolumeDecrease() {
    TVRemoteControl rc = new TVRemoteControl(20);
Integer newVolume = rc.decreaseVolume(15);
System.assertEquals(5, newVolume);
}
@isTest static void testVolumeIncreaseOverMax() {
TVRemoteControl rc = new TVRemoteControl(10);
Integer newVolume = rc.increaseVolume(100);
System.assertEquals(50, newVolume);
}
@isTest static void testVolumeDecreaseUnderMin() {
TVRemoteControl rc = new TVRemoteControl(10);
Integer newVolume = rc.decreaseVolume(100);
System.assertEquals(0, newVolume);
}
@isTest static void testGetMenuOptions() {
// Static method call. No need to create a class instance.
String menu = TVRemoteControl.getMenuOptions();
System.assertNotEquals(null, menu);
System.assertNotEquals('', menu);
}
}