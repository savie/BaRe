package com.microsoft.identity.common.java.controllers;

import com.microsoft.identity.common.java.commands.BaseCommand;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class CommandResultCache$1 extends LinkedHashMap<BaseCommand, Object> {
    @Override // java.util.LinkedHashMap
    public final boolean removeEldestEntry(Map.Entry<BaseCommand, Object> entry) {
        return size() > 250;
    }
}
