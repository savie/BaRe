package com.bare.messagescalls.conversations;
import java.util.*;
public final class ConversationRepository {private final Map<String,ConversationState> map=new LinkedHashMap<>();public synchronized void replace(Collection<ConversationState> xs){map.clear();if(xs!=null)for(ConversationState x:xs)if(x!=null&&x.getThreadId()!=null)map.put(x.getThreadId(),x);}public synchronized List<ConversationState> list(){return Collections.unmodifiableList(new ArrayList<>(map.values()));}public synchronized ConversationState get(String id){return map.get(id);}}
