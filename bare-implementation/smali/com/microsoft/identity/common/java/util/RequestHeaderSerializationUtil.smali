.class public abstract Lcom/microsoft/identity/common/java/util/RequestHeaderSerializationUtil;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final mGson:Lcom/google/gson/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lt14;

    .line 2
    .line 3
    invoke-direct {v0}, Lt14;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/gson/a;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/google/gson/a;-><init>(Lt14;)V

    .line 9
    .line 10
    .line 11
    sput-object v1, Lcom/microsoft/identity/common/java/util/RequestHeaderSerializationUtil;->mGson:Lcom/google/gson/a;

    .line 12
    .line 13
    return-void
.end method

.method public static toJson(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/microsoft/identity/common/java/util/RequestHeaderSerializationUtil;->mGson:Lcom/google/gson/a;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string p0, "headerMap is marked non-null but is null"

    .line 11
    .line 12
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method
