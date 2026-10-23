.class public final Lf25;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final b:Lf25;


# instance fields
.field public final a:Lp35;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf25;

    .line 2
    .line 3
    invoke-direct {v0}, Lf25;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lf25;->b:Lf25;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp35;

    .line 5
    .line 6
    const/16 v1, 0x14

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lp35;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lf25;->a:Lp35;

    .line 12
    .line 13
    return-void
.end method
