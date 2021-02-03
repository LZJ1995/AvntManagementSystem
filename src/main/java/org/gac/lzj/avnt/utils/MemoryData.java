package org.gac.lzj.avnt.utils;

import java.util.HashMap;
import java.util.Map;

/**
 * 创建一个内存数据类，用于存放静态的数据，并初始化
 */

public class MemoryData {

    /**
     * 保存session中数据
     */
    private static Map<String, String> sessionIdMap = new HashMap<String, String>();
    public static Map<String, String> getSessionIdMap() {
        return sessionIdMap;
    }

    public static void setSessionIdMap(Map<String, String> sessionIdMap) {
        MemoryData.sessionIdMap = sessionIdMap;
    }
}
