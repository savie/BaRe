.class public final enum Ll27;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Ll27;

.field public static final enum Aegis128X2:Ll27;

.field public static final enum Aegis256:Ll27;

.field public static final enum Aes256Gcm:Ll27;

.field public static final enum Aes256GcmSiv:Ll27;

.field public static final enum None:Ll27;

.field public static final enum SevenZipAes:Ll27;


# direct methods
.method private static final synthetic $values()[Ll27;
    .locals 6

    .line 1
    sget-object v0, Ll27;->None:Ll27;

    .line 2
    .line 3
    sget-object v1, Ll27;->SevenZipAes:Ll27;

    .line 4
    .line 5
    sget-object v2, Ll27;->Aes256Gcm:Ll27;

    .line 6
    .line 7
    sget-object v3, Ll27;->Aes256GcmSiv:Ll27;

    .line 8
    .line 9
    sget-object v4, Ll27;->Aegis256:Ll27;

    .line 10
    .line 11
    sget-object v5, Ll27;->Aegis128X2:Ll27;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ll27;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ll27;

    .line 2
    .line 3
    const-string v1, "None"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ll27;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ll27;->None:Ll27;

    .line 10
    .line 11
    new-instance v0, Ll27;

    .line 12
    .line 13
    const-string v1, "SevenZipAes"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Ll27;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Ll27;->SevenZipAes:Ll27;

    .line 20
    .line 21
    new-instance v0, Ll27;

    .line 22
    .line 23
    const-string v1, "Aes256Gcm"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Ll27;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Ll27;->Aes256Gcm:Ll27;

    .line 30
    .line 31
    new-instance v0, Ll27;

    .line 32
    .line 33
    const-string v1, "Aes256GcmSiv"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Ll27;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Ll27;->Aes256GcmSiv:Ll27;

    .line 40
    .line 41
    new-instance v0, Ll27;

    .line 42
    .line 43
    const-string v1, "Aegis256"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Ll27;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Ll27;->Aegis256:Ll27;

    .line 50
    .line 51
    new-instance v0, Ll27;

    .line 52
    .line 53
    const-string v1, "Aegis128X2"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Ll27;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Ll27;->Aegis128X2:Ll27;

    .line 60
    .line 61
    invoke-static {}, Ll27;->$values()[Ll27;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Ll27;->$VALUES:[Ll27;

    .line 66
    .line 67
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Ll27;->$ENTRIES:Ljx2;

    .line 72
    .line 73
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

.method public static getEntries()Ljx2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljx2;"
        }
    .end annotation

    .line 1
    sget-object v0, Ll27;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ll27;
    .locals 1

    .line 1
    const-class v0, Ll27;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ll27;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ll27;
    .locals 1

    .line 1
    sget-object v0, Ll27;->$VALUES:[Ll27;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ll27;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toPublicMethod()Lwy6;
    .locals 4

    .line 1
    sget-object v0, Lk27;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lq;->j()V

    .line 14
    .line 15
    .line 16
    return-object v1

    .line 17
    :pswitch_0
    new-instance v0, Li27;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "SBA archive uses an internal encryption method that is not enabled in the public SDK build: "

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :pswitch_1
    sget-object p0, Lwy6;->Aegis128X2:Lwy6;

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_2
    sget-object p0, Lwy6;->Aegis256:Lwy6;

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_3
    sget-object p0, Lwy6;->None:Lwy6;

    .line 44
    .line 45
    return-object p0

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
