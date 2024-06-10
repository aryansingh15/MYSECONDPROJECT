    public with sharing class listexaple {
    public static void myExample() {
        List<String> newList = new List<String>();

        for (Integer i = 1; i <= 20; i++) {
        newList.add('Aryan singh ' + i);
        }
        system.debug('newList:' + newList);
    }
    }
