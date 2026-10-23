.class public interface abstract Lcom/jcraft/jsch/ConfigRepository$Config;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/ConfigRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Config"
.end annotation


# virtual methods
.method public abstract getHostname()Ljava/lang/String;
.end method

.method public abstract getPort()I
.end method

.method public abstract getUser()Ljava/lang/String;
.end method

.method public abstract getValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getValues(Ljava/lang/String;)[Ljava/lang/String;
.end method
