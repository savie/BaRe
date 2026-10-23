.class public final Lq76;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lo21;


# direct methods
.method public constructor <init>(Lo21;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq76;->a:Lo21;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object p0, p0, Lq76;->a:Lo21;

    .line 4
    .line 5
    sget-object p1, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lo21;->resumeWith(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method
