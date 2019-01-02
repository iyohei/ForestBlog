package com.hfanss.test;

import org.junit.Test;

import redis.clients.jedis.Jedis;

public class Test02 {

	@Test
	public void test001() {
		
		//连接本地的 Redis 服务
        Jedis jedis = new Jedis("localhost");
        jedis.auth("love53520");
        jedis.select(1); 
        jedis.set("name","kun"); 
        String name = jedis.get("name"); 
        System.out.println("name = " + name); 
        jedis.flushDB(); 
        String name2 = jedis.get("name"); 
        System.out.println("name2 = " + name2);
        
        
        
        System.out.println("连接成功");
		
	}
}
