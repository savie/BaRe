.class public final Lzq9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lnt9;


# static fields
.field public static final a:Lzq9;

.field public static final b:Lkt9;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lzq9;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lzq9;->a:Lzq9;

    .line 7
    .line 8
    new-instance v0, Lkt9;

    .line 9
    .line 10
    const-class v1, Lns9;

    .line 11
    .line 12
    const-class v2, Lba9;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lkt9;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lzq9;->b:Lkt9;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Class;
    .locals 0

    .line 1
    const-class p0, Lba9;

    .line 2
    .line 3
    return-object p0
.end method
