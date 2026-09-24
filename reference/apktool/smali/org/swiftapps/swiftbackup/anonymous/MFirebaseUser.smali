.class public final Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final ANONYMOUS_USER_DISPLAY_NAME:Ljava/lang/String; = "Anonymous user"

.field public static final ANONYMOUS_USER_EMAIL:Ljava/lang/String; = "anonymous@swiftbackup.app"

.field public static final Companion:Le45;


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final email:Ljava/lang/String;

.field private final isAnonymous:Z

.field private final photoUrl:Ljava/lang/String;

.field private final providerData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldh8;",
            ">;"
        }
    .end annotation
.end field

.field private final providerId:Ljava/lang/String;

.field private final uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le45;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->Companion:Le45;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ldh8;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->uid:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->email:Ljava/lang/String;

    .line 19
    .line 20
    iput-boolean p3, p0, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous:Z

    .line 21
    .line 22
    iput-object p4, p0, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->displayName:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p5, p0, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->photoUrl:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p6, p0, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->providerData:Ljava/util/List;

    .line 27
    .line 28
    iput-object p7, p0, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->providerId:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->email:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPhotoUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->photoUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getProviderData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldh8;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->providerData:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getProviderId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->providerId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isAnonymous()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous:Z

    .line 2
    .line 3
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->email:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "MFirebaseUser(email=\'"

    .line 4
    .line 5
    const-string v1, "\')"

    .line 6
    .line 7
    invoke-static {v0, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final updateProfile(Lhh8;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Ld45;->b:Ld45;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    iget-boolean p0, p0, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous:Z

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->c()Lp49;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lp49;->c:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lix0;

    .line 44
    .line 45
    iget-object v2, v0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/FirebaseApp;

    .line 46
    .line 47
    new-instance v3, Lif3;

    .line 48
    .line 49
    invoke-direct {v3, v0}, Lif3;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    new-instance v0, Lu49;

    .line 56
    .line 57
    invoke-direct {v0, p1}, Lu49;-><init>(Lhh8;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lh59;->d(Lcom/google/firebase/FirebaseApp;)V

    .line 61
    .line 62
    .line 63
    iput-object p0, v0, Lh59;->d:Lp49;

    .line 64
    .line 65
    iput-object v3, v0, Lh59;->e:Ljava/lang/Object;

    .line 66
    .line 67
    iput-object v3, v0, Lh59;->f:Lb99;

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Lix0;->m(Lh59;)Lcom/google/android/gms/tasks/Task;

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    return-void
.end method
