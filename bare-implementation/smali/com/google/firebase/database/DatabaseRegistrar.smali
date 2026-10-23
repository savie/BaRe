.class public Lcom/google/firebase/database/DatabaseRegistrar;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-rtdb"


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

.method public static synthetic a(Lpp0;)Ljg3;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/database/DatabaseRegistrar;->lambda$getComponents$0(Ljo1;)Ljg3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Ljo1;)Ljg3;
    .locals 4

    .line 1
    new-instance v0, Ljg3;

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
    const-class v2, Lae4;

    .line 12
    .line 13
    invoke-interface {p0, v2}, Ljo1;->h(Ljava/lang/Class;)Llu5;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-class v3, Lne4;

    .line 18
    .line 19
    invoke-interface {p0, v3}, Ljo1;->h(Ljava/lang/Class;)Llu5;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {v0, v1, v2, p0}, Ljg3;-><init>(Lcom/google/firebase/FirebaseApp;Llu5;Llu5;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lun1;",
            ">;"
        }
    .end annotation

    .line 1
    const-class p0, Ljg3;

    .line 2
    .line 3
    invoke-static {p0}, Lun1;->b(Ljava/lang/Class;)Ltn1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "fire-rtdb"

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
    const/4 v3, 0x2

    .line 24
    const-class v4, Lae4;

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
    new-instance v1, Lji2;

    .line 33
    .line 34
    const-class v4, Lne4;

    .line 35
    .line 36
    invoke-direct {v1, v2, v3, v4}, Lji2;-><init>(IILjava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Ltn1;->a(Lji2;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, La6;

    .line 43
    .line 44
    const/4 v2, 0x5

    .line 45
    invoke-direct {v1, v2}, La6;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Ltn1;->f:Lmo1;

    .line 49
    .line 50
    invoke-virtual {p0}, Ltn1;->b()Lun1;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string v1, "22.0.1"

    .line 55
    .line 56
    invoke-static {v0, v1}, Lvm4;->h(Ljava/lang/String;Ljava/lang/String;)Lun1;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    filled-new-array {p0, v0}, [Lun1;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method
