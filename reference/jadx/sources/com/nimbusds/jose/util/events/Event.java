package com.nimbusds.jose.util.events;

import com.nimbusds.jose.proc.SecurityContext;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface Event<S, C extends SecurityContext> {
    C getContext();

    S getSource();
}
