.class public abstract Lcom/nimbusds/jose/shaded/gson/internal/bind/SerializationDelegatingTypeAdapter;
.super Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/gson/TypeAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract getSerializationDelegate()Lcom/nimbusds/jose/shaded/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/shaded/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end method
