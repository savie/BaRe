.class public final Lwj;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final c:Lwj;


# instance fields
.field public final a:Lbw0;

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lge;->a:Lge;

    .line 2
    .line 3
    new-instance v1, Lwj;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lwj;-><init>(Lbw0;)V

    .line 6
    .line 7
    .line 8
    sput-object v1, Lwj;->c:Lwj;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lbw0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwj;->a:Lbw0;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lwj;->b:Z

    .line 8
    .line 9
    return-void
.end method
