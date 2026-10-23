.class public final enum Lip6;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lip6;

.field public static final enum ANY:Lip6;

.field public static final enum SH:Lip6;

.field public static final enum SHIZUKU:Lip6;

.field public static final enum SU:Lip6;


# direct methods
.method private static final synthetic $values()[Lip6;
    .locals 4

    .line 1
    sget-object v0, Lip6;->SH:Lip6;

    .line 2
    .line 3
    sget-object v1, Lip6;->SU:Lip6;

    .line 4
    .line 5
    sget-object v2, Lip6;->SHIZUKU:Lip6;

    .line 6
    .line 7
    sget-object v3, Lip6;->ANY:Lip6;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lip6;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lip6;

    .line 2
    .line 3
    const-string v1, "SH"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lip6;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lip6;->SH:Lip6;

    .line 10
    .line 11
    new-instance v0, Lip6;

    .line 12
    .line 13
    const-string v1, "SU"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lip6;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lip6;->SU:Lip6;

    .line 20
    .line 21
    new-instance v0, Lip6;

    .line 22
    .line 23
    const-string v1, "SHIZUKU"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lip6;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lip6;->SHIZUKU:Lip6;

    .line 30
    .line 31
    new-instance v0, Lip6;

    .line 32
    .line 33
    const-string v1, "ANY"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lip6;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lip6;->ANY:Lip6;

    .line 40
    .line 41
    invoke-static {}, Lip6;->$values()[Lip6;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lip6;->$VALUES:[Lip6;

    .line 46
    .line 47
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lip6;->$ENTRIES:Ljx2;

    .line 52
    .line 53
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
    sget-object v0, Lip6;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lip6;
    .locals 1

    .line 1
    const-class v0, Lip6;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lip6;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lip6;
    .locals 1

    .line 1
    sget-object v0, Lip6;->$VALUES:[Lip6;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lip6;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final runCommands([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lmp6;->a:Lmp6;

    .line 5
    .line 6
    sget-boolean v0, Lmp6;->g:Z

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    sget-object v0, Lip6;->SU:Lip6;

    .line 11
    .line 12
    if-ne p0, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lmp6;->g()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sget-object v0, Lip6;->SHIZUKU:Lip6;

    .line 22
    .line 23
    if-ne p0, v0, :cond_1

    .line 24
    .line 25
    sget-object p0, Lqe7;->a:Lgv7;

    .line 26
    .line 27
    array-length p0, p1

    .line 28
    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, [Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p0}, Lqe7;->c([Ljava/lang/String;)Lne7;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    iget-object p0, p0, Lne7;->a:Ljava/util/ArrayList;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    array-length p0, p1

    .line 42
    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, [Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {p0}, Lmp6;->l([Ljava/lang/String;)Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :goto_0
    sget-object p0, Lorg/swiftapps/rootservice/ShellHelper;->INSTANCE:Lorg/swiftapps/rootservice/ShellHelper;

    .line 54
    .line 55
    array-length v0, p1

    .line 56
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, [Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lorg/swiftapps/rootservice/ShellHelper;->su([Ljava/lang/String;)Lod7;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Lod7;->b()Lgn6;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0}, Lgn6;->a()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    :goto_1
    invoke-static {p0}, Lel1;->Q0(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method
