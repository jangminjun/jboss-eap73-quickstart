package org.jboss.as.quickstarts.helloworld;

@Named
public class TestCacheService {

    public static final String REMOTE_CACHE_NAME = "myremotecache";

    @Resource(lookup = "java:jboss/infinispan/remote-container/myRemoteContainer")
    org.infinispan.client.hotrod.RemoteCacheContainer remoteCacheContainer;

    public void putRemoteCache(String key, String value) {
        remoteCacheContainer.getCache(REMOTE_CACHE_NAME).put(key, String.format("%s (%s)", value, new Date()));
    }

    public Object getRemoteCache(String key) {
        return remoteCacheContainer.getCache(REMOTE_CACHE_NAME).get(key);
    }
}
