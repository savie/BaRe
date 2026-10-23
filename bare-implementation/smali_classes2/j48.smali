.class public final enum Lj48;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lj48;

.field public static final enum AES_GCM:Lj48;

.field public static final enum AES_SIV:Lj48;


# instance fields
.field private final keySizeBytes:I

.field private final keyValueFieldNumber:I

.field private final typeUrl:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lj48;
    .locals 2

    .line 1
    sget-object v0, Lj48;->AES_SIV:Lj48;

    .line 2
    .line 3
    sget-object v1, Lj48;->AES_GCM:Lj48;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lj48;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lj48;

    .line 2
    .line 3
    const/16 v4, 0x40

    .line 4
    .line 5
    const/4 v5, 0x2

    .line 6
    const-string v1, "AES_SIV"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "type.googleapis.com/google.crypto.tink.AesSivKey"

    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lj48;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lj48;->AES_SIV:Lj48;

    .line 15
    .line 16
    new-instance v1, Lj48;

    .line 17
    .line 18
    const/16 v5, 0x20

    .line 19
    .line 20
    const/4 v6, 0x3

    .line 21
    const-string v2, "AES_GCM"

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    const-string v4, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    .line 25
    .line 26
    invoke-direct/range {v1 .. v6}, Lj48;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lj48;->AES_GCM:Lj48;

    .line 30
    .line 31
    invoke-static {}, Lj48;->$values()[Lj48;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lj48;->$VALUES:[Lj48;

    .line 36
    .line 37
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lj48;->$ENTRIES:Ljx2;

    .line 42
    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lj48;->typeUrl:Ljava/lang/String;

    .line 5
    .line 6
    iput p4, p0, Lj48;->keySizeBytes:I

    .line 7
    .line 8
    iput p5, p0, Lj48;->keyValueFieldNumber:I

    .line 9
    .line 10
    return-void
.end method

.method public static getEntries()Ljx2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljx2;"
        }
    .end annotation

    .line 1
    sget-object v0, Lj48;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lj48;
    .locals 1

    .line 1
    const-class v0, Lj48;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lj48;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lj48;
    .locals 1

    .line 1
    sget-object v0, Lj48;->$VALUES:[Lj48;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lj48;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getKeySizeBytes()I
    .locals 0

    .line 1
    iget p0, p0, Lj48;->keySizeBytes:I

    .line 2
    .line 3
    return p0
.end method

.method public final getKeyValueFieldNumber()I
    .locals 0

    .line 1
    iget p0, p0, Lj48;->keyValueFieldNumber:I

    .line 2
    .line 3
    return p0
.end method

.method public final getTypeUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lj48;->typeUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
