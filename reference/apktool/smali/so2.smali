.class public abstract Lso2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lqo2;

.field public static final b:Loo2;

.field public static final c:Lpo2;

.field public static final d:Lro2;

.field public static final e:Lpo2;

.field public static final f:Liu5;

.field public static final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lqo2;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lso2;->a:Lqo2;

    .line 7
    .line 8
    new-instance v0, Loo2;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lso2;->b:Loo2;

    .line 14
    .line 15
    new-instance v0, Lpo2;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lso2;->c:Lpo2;

    .line 21
    .line 22
    new-instance v1, Lro2;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lso2;->d:Lro2;

    .line 28
    .line 29
    sput-object v0, Lso2;->e:Lpo2;

    .line 30
    .line 31
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    .line 32
    .line 33
    invoke-static {v0, v1}, Liu5;->a(Ljava/lang/Object;Ljava/lang/String;)Liu5;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lso2;->f:Liu5;

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    sput-boolean v0, Lso2;->g:Z

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public abstract a(IIII)I
.end method

.method public abstract b(IIII)F
.end method
