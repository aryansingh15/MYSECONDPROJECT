    public with sharing class mapCollection {
    public static void mapCollection2() {
        List<Account> newList = [SELECT id, Name, Phone FROM Account LIMIT 3];
        //System.debug('newList::' + newList);

        Map<Id, sObject> mapList = new Map<Id, sObject>(newList);
        Map<Integer, String> newMapList = new Map<Integer, String>{
        1 => 'one',
        2 => 'two'
        };
        System.debug('newMapList::' + newMapList);
        newMapList.clear();
        System.debug('newMapList::' + newMapList);

        // System.debug('mapList::' + mapList);
    }
    }
