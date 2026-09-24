.class public final Ldi7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final t:Lcz4;

.field public static final u:Z


# instance fields
.field public final a:Ljava/util/EnumSet;

.field public final b:Ljava/util/ArrayList;

.field public c:Ljavax/net/SocketFactory;

.field public d:Ljava/util/Random;

.field public e:Ljava/util/UUID;

.field public f:Z

.field public g:Z

.field public h:Llv1;

.field public i:I

.field public j:J

.field public k:I

.field public l:J

.field public m:I

.field public n:Lcz4;

.field public o:J

.field public p:Lus2;

.field public q:Z

.field public r:Lz28;

.field public s:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcz4;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcz4;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ldi7;->t:Lcz4;

    .line 9
    .line 10
    :try_start_0
    const-string v0, "android.os.Build"

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    sput-boolean v0, Ldi7;->u:Z

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lus6;

    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Ldi7;->a:Ljava/util/EnumSet;

    .line 11
    .line 12
    new-instance v0, Ljava/security/SecureRandom;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Ldi7;->d:Ljava/util/Random;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Ldi7;->b:Ljava/util/ArrayList;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/EnumSet;
    .locals 1

    .line 1
    iget-object v0, p0, Ldi7;->a:Ljava/util/EnumSet;

    .line 2
    .line 3
    invoke-static {v0}, Lus6;->b(Ljava/util/Set;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-class p0, Lbt6;

    .line 10
    .line 11
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    sget-object v0, Lbt6;->b:Lbt6;

    .line 17
    .line 18
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-boolean p0, p0, Ldi7;->q:Z

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    sget-object p0, Lbt6;->c:Lbt6;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    :cond_1
    return-object v0
.end method
