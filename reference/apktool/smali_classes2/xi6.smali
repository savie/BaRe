.class public final enum Lxi6;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lxi6;

.field public static final enum Beta:Lxi6;

.field public static final enum Dev:Lxi6;

.field public static final enum Experimental:Lxi6;

.field public static final enum Production:Lxi6;

.field public static final enum TestOnly:Lxi6;

.field public static final enum ToBeRemoved:Lxi6;


# direct methods
.method private static final synthetic $values()[Lxi6;
    .locals 6

    .line 1
    sget-object v0, Lxi6;->Dev:Lxi6;

    .line 2
    .line 3
    sget-object v1, Lxi6;->TestOnly:Lxi6;

    .line 4
    .line 5
    sget-object v2, Lxi6;->Experimental:Lxi6;

    .line 6
    .line 7
    sget-object v3, Lxi6;->ToBeRemoved:Lxi6;

    .line 8
    .line 9
    sget-object v4, Lxi6;->Beta:Lxi6;

    .line 10
    .line 11
    sget-object v5, Lxi6;->Production:Lxi6;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Lxi6;

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
    new-instance v0, Lxi6;

    .line 2
    .line 3
    const-string v1, "Dev"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lxi6;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lxi6;->Dev:Lxi6;

    .line 10
    .line 11
    new-instance v0, Lxi6;

    .line 12
    .line 13
    const-string v1, "TestOnly"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lxi6;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lxi6;->TestOnly:Lxi6;

    .line 20
    .line 21
    new-instance v0, Lxi6;

    .line 22
    .line 23
    const-string v1, "Experimental"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lxi6;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lxi6;->Experimental:Lxi6;

    .line 30
    .line 31
    new-instance v0, Lxi6;

    .line 32
    .line 33
    const-string v1, "ToBeRemoved"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lxi6;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lxi6;->ToBeRemoved:Lxi6;

    .line 40
    .line 41
    new-instance v0, Lxi6;

    .line 42
    .line 43
    const-string v1, "Beta"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lxi6;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lxi6;->Beta:Lxi6;

    .line 50
    .line 51
    new-instance v0, Lxi6;

    .line 52
    .line 53
    const-string v1, "Production"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lxi6;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lxi6;->Production:Lxi6;

    .line 60
    .line 61
    invoke-static {}, Lxi6;->$values()[Lxi6;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lxi6;->$VALUES:[Lxi6;

    .line 66
    .line 67
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lxi6;->$ENTRIES:Ljx2;

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
    sget-object v0, Lxi6;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lxi6;
    .locals 1

    .line 1
    const-class v0, Lxi6;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lxi6;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lxi6;
    .locals 1

    .line 1
    sget-object v0, Lxi6;->$VALUES:[Lxi6;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lxi6;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDisplayString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lwi6;->a:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lq;->j()V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    const-string p0, ""

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_1
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 21
    .line 22
    const p0, 0x7f1300c4

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_2
    const-string p0, "To be removed"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_3
    const-string p0, "Experimental"

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_4
    const-string p0, "Testing only"

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_5
    const-string p0, "Dev"

    .line 40
    .line 41
    return-object p0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
