.class public Lcom/pcloud/sdk/internal/networking/serialization/ByteStringTypeAdapter;
.super Lcom/google/gson/b;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/b;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final read(Ltl4;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ltl4;->nextString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object p1, Lhy0;->d:Lhy0;

    .line 6
    .line 7
    invoke-static {p0}, Lge;->t(Ljava/lang/String;)Lhy0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final write(Lnn4;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lhy0;

    .line 2
    .line 3
    invoke-virtual {p2}, Lhy0;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1, p0}, Lnn4;->S(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
