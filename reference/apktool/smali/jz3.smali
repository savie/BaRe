.class public final Ljz3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final c:Ljz3;


# instance fields
.field public final a:Llk;

.field public final b:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Llk;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Ljz3;

    .line 11
    .line 12
    invoke-direct {v2, v0, v1}, Ljz3;-><init>(Llk;Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    sput-object v2, Ljz3;->c:Ljz3;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Llk;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljz3;->a:Llk;

    .line 5
    .line 6
    iput-object p2, p0, Ljz3;->b:Landroid/os/Looper;

    .line 7
    .line 8
    return-void
.end method
