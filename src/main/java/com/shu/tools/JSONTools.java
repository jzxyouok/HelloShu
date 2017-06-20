package com.shu.tools;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.Collection;

/**
 * Created by zihua on 17-5-10.
 */
public class JSONTools {


    public static Object notNull(Object o) {
        return o == null ? "" : o;
    }
}
