.class public abstract enum Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;

.field public static final enum DEFAULT:Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;

.field public static final enum STRING:Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy$1;

    .line 2
    .line 3
    const-string v1, "DEFAULT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy$1;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;->DEFAULT:Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;

    .line 10
    .line 11
    new-instance v1, Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy$2;

    .line 12
    .line 13
    const-string v3, "STRING"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy$2;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;->STRING:Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v3, v3, [Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;

    .line 23
    .line 24
    aput-object v0, v3, v2

    .line 25
    .line 26
    aput-object v1, v3, v4

    .line 27
    .line 28
    sput-object v3, Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;->$VALUES:[Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;

    .line 29
    .line 30
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/nimbusds/jose/shaded/gson/LongSerializationPolicy$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;
    .locals 1

    .line 1
    const-class v0, Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;
    .locals 1

    .line 1
    sget-object v0, Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;->$VALUES:[Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/nimbusds/jose/shaded/gson/LongSerializationPolicy;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract serialize(Ljava/lang/Long;)Lcom/nimbusds/jose/shaded/gson/JsonElement;
.end method
