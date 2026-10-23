.class public final Lyp9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final b:Lyp9;

.field public static final c:Lyp9;

.field public static final d:Lyp9;

.field public static final e:Lyp9;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lyp9;

    .line 2
    .line 3
    const-string v1, "NIST_P256"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lyp9;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lyp9;->b:Lyp9;

    .line 9
    .line 10
    new-instance v0, Lyp9;

    .line 11
    .line 12
    const-string v1, "NIST_P384"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lyp9;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lyp9;->c:Lyp9;

    .line 18
    .line 19
    new-instance v0, Lyp9;

    .line 20
    .line 21
    const-string v1, "NIST_P521"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lyp9;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lyp9;->d:Lyp9;

    .line 27
    .line 28
    new-instance v0, Lyp9;

    .line 29
    .line 30
    const-string v1, "X25519"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lyp9;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lyp9;->e:Lyp9;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyp9;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lyp9;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
