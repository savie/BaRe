.class public Lcom/google/firebase/datatransport/TransportRegistrar;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-transport"


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

.method public static synthetic a(Lpp0;)Lwa8;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$2(Ljo1;)Lwa8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lpp0;)Lwa8;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$1(Ljo1;)Lwa8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lpp0;)Lwa8;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$0(Ljo1;)Lwa8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Ljo1;)Lwa8;
    .locals 1

    .line 1
    const-class v0, Landroid/content/Context;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljo1;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p0}, Lya8;->b(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lya8;->a()Lya8;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object v0, Loy0;->f:Loy0;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lya8;->c(Loy0;)Lxa8;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private static synthetic lambda$getComponents$1(Ljo1;)Lwa8;
    .locals 1

    .line 1
    const-class v0, Landroid/content/Context;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljo1;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p0}, Lya8;->b(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lya8;->a()Lya8;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object v0, Loy0;->f:Loy0;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lya8;->c(Loy0;)Lxa8;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private static synthetic lambda$getComponents$2(Ljo1;)Lwa8;
    .locals 1

    .line 1
    const-class v0, Landroid/content/Context;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljo1;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p0}, Lya8;->b(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lya8;->a()Lya8;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object v0, Loy0;->e:Loy0;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lya8;->c(Loy0;)Lxa8;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lun1;",
            ">;"
        }
    .end annotation

    .line 1
    const-class p0, Lwa8;

    .line 2
    .line 3
    invoke-static {p0}, Lun1;->b(Ljava/lang/Class;)Ltn1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "fire-transport"

    .line 8
    .line 9
    iput-object v1, v0, Ltn1;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-class v2, Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v2}, Lji2;->b(Ljava/lang/Class;)Lji2;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v0, v3}, Ltn1;->a(Lji2;)V

    .line 18
    .line 19
    .line 20
    new-instance v3, La6;

    .line 21
    .line 22
    const/16 v4, 0xb

    .line 23
    .line 24
    invoke-direct {v3, v4}, La6;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object v3, v0, Ltn1;->f:Lmo1;

    .line 28
    .line 29
    invoke-virtual {v0}, Ltn1;->b()Lun1;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v3, Lnc6;

    .line 34
    .line 35
    const-class v4, Lft4;

    .line 36
    .line 37
    invoke-direct {v3, v4, p0}, Lnc6;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Lun1;->a(Lnc6;)Ltn1;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {v2}, Lji2;->b(Ljava/lang/Class;)Lji2;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v3, v4}, Ltn1;->a(Lji2;)V

    .line 49
    .line 50
    .line 51
    new-instance v4, Lb6;

    .line 52
    .line 53
    const/16 v5, 0xa

    .line 54
    .line 55
    invoke-direct {v4, v5}, Lb6;-><init>(I)V

    .line 56
    .line 57
    .line 58
    iput-object v4, v3, Ltn1;->f:Lmo1;

    .line 59
    .line 60
    invoke-virtual {v3}, Ltn1;->b()Lun1;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    new-instance v4, Lnc6;

    .line 65
    .line 66
    const-class v5, Lta8;

    .line 67
    .line 68
    invoke-direct {v4, v5, p0}, Lnc6;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v4}, Lun1;->a(Lnc6;)Ltn1;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {v2}, Lji2;->b(Ljava/lang/Class;)Lji2;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {p0, v2}, Ltn1;->a(Lji2;)V

    .line 80
    .line 81
    .line 82
    new-instance v2, Lc6;

    .line 83
    .line 84
    const/16 v4, 0x10

    .line 85
    .line 86
    invoke-direct {v2, v4}, Lc6;-><init>(I)V

    .line 87
    .line 88
    .line 89
    iput-object v2, p0, Ltn1;->f:Lmo1;

    .line 90
    .line 91
    invoke-virtual {p0}, Ltn1;->b()Lun1;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    const-string v2, "19.0.0"

    .line 96
    .line 97
    invoke-static {v1, v2}, Lvm4;->h(Ljava/lang/String;Ljava/lang/String;)Lun1;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    filled-new-array {v0, v3, p0, v1}, [Lun1;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0
.end method
