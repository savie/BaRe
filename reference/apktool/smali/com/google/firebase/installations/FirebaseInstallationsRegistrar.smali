.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-installations"


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

.method public static synthetic a(Lpp0;)Lqg3;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->lambda$getComponents$0(Ljo1;)Lqg3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static lambda$getComponents$0(Ljo1;)Lqg3;
    .locals 7

    .line 1
    new-instance v0, Lpg3;

    .line 2
    .line 3
    const-class v1, Lcom/google/firebase/FirebaseApp;

    .line 4
    .line 5
    invoke-interface {p0, v1}, Ljo1;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/google/firebase/FirebaseApp;

    .line 10
    .line 11
    const-class v2, Lr34;

    .line 12
    .line 13
    invoke-interface {p0, v2}, Ljo1;->c(Ljava/lang/Class;)Lga6;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Lnc6;

    .line 18
    .line 19
    const-class v4, Lak0;

    .line 20
    .line 21
    const-class v5, Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    invoke-direct {v3, v4, v5}, Lnc6;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, v3}, Ljo1;->g(Lnc6;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    new-instance v4, Lnc6;

    .line 33
    .line 34
    const-class v5, Lht0;

    .line 35
    .line 36
    const-class v6, Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    invoke-direct {v4, v5, v6}, Lnc6;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0, v4}, Ljo1;->g(Lnc6;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 46
    .line 47
    new-instance v4, Lo77;

    .line 48
    .line 49
    invoke-direct {v4, p0}, Lo77;-><init>(Ljava/util/concurrent/Executor;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1, v2, v3, v4}, Lpg3;-><init>(Lcom/google/firebase/FirebaseApp;Lga6;Ljava/util/concurrent/ExecutorService;Lo77;)V

    .line 53
    .line 54
    .line 55
    return-object v0
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
    const-class p0, Lqg3;

    .line 2
    .line 3
    invoke-static {p0}, Lun1;->b(Ljava/lang/Class;)Ltn1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "fire-installations"

    .line 8
    .line 9
    iput-object v0, p0, Ltn1;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-class v1, Lcom/google/firebase/FirebaseApp;

    .line 12
    .line 13
    invoke-static {v1}, Lji2;->b(Ljava/lang/Class;)Lji2;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, v1}, Ltn1;->a(Lji2;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lji2;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    const-class v4, Lr34;

    .line 25
    .line 26
    invoke-direct {v1, v2, v3, v4}, Lji2;-><init>(IILjava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ltn1;->a(Lji2;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lnc6;

    .line 33
    .line 34
    const-class v4, Lak0;

    .line 35
    .line 36
    const-class v5, Ljava/util/concurrent/ExecutorService;

    .line 37
    .line 38
    invoke-direct {v1, v4, v5}, Lnc6;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    new-instance v4, Lji2;

    .line 42
    .line 43
    invoke-direct {v4, v1, v3, v2}, Lji2;-><init>(Lnc6;II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v4}, Ltn1;->a(Lji2;)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lnc6;

    .line 50
    .line 51
    const-class v4, Lht0;

    .line 52
    .line 53
    const-class v5, Ljava/util/concurrent/Executor;

    .line 54
    .line 55
    invoke-direct {v1, v4, v5}, Lnc6;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 56
    .line 57
    .line 58
    new-instance v4, Lji2;

    .line 59
    .line 60
    invoke-direct {v4, v1, v3, v2}, Lji2;-><init>(Lnc6;II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v4}, Ltn1;->a(Lji2;)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Lb6;

    .line 67
    .line 68
    const/4 v4, 0x5

    .line 69
    invoke-direct {v1, v4}, Lb6;-><init>(I)V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Ltn1;->f:Lmo1;

    .line 73
    .line 74
    invoke-virtual {p0}, Ltn1;->b()Lun1;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    new-instance v1, Lq34;

    .line 79
    .line 80
    invoke-direct {v1, v2}, Lq34;-><init>(I)V

    .line 81
    .line 82
    .line 83
    const-class v4, Lq34;

    .line 84
    .line 85
    invoke-static {v4}, Lun1;->b(Ljava/lang/Class;)Ltn1;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    iput v3, v4, Ltn1;->e:I

    .line 90
    .line 91
    new-instance v3, Lrn1;

    .line 92
    .line 93
    invoke-direct {v3, v1, v2}, Lrn1;-><init>(Ljava/lang/Object;I)V

    .line 94
    .line 95
    .line 96
    iput-object v3, v4, Ltn1;->f:Lmo1;

    .line 97
    .line 98
    invoke-virtual {v4}, Ltn1;->b()Lun1;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const-string v2, "19.1.0"

    .line 103
    .line 104
    invoke-static {v0, v2}, Lvm4;->h(Ljava/lang/String;Ljava/lang/String;)Lun1;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    filled-new-array {p0, v1, v0}, [Lun1;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0
.end method
