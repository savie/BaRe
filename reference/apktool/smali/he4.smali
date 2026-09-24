.class public final Lhe4;
.super Lkz3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final k:Loe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lb05;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lde4;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Loe;

    .line 12
    .line 13
    const-string v3, "IdentityCredentials.API"

    .line 14
    .line 15
    invoke-direct {v2, v3, v1, v0}, Loe;-><init>(Ljava/lang/String;Lyc9;Lb05;)V

    .line 16
    .line 17
    .line 18
    sput-object v2, Lhe4;->k:Loe;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/identitycredentials/GetCredentialRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lr19;->a()Lby7;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcy0;->f:Ly53;

    .line 9
    .line 10
    filled-new-array {v1}, [Ly53;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lby7;->c:[Ly53;

    .line 15
    .line 16
    new-instance v1, Lzq8;

    .line 17
    .line 18
    const/16 v2, 0x15

    .line 19
    .line 20
    invoke-direct {v1, p1, v2}, Lzq8;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Lby7;->a:Lyi6;

    .line 24
    .line 25
    const/16 p1, 0x7fbd

    .line 26
    .line 27
    iput p1, v0, Lby7;->d:I

    .line 28
    .line 29
    invoke-virtual {v0}, Lby7;->a()Lr19;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0, p1}, Lkz3;->b(ILr19;)Lcom/google/android/gms/tasks/Task;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    return-object p0
.end method
