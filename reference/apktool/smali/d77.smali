.class public final Ld77;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lli3;


# instance fields
.field public final a:Lc77;


# direct methods
.method public constructor <init>(Lr76;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld77;->a:Lc77;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljv1;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Ld77;->a:Lc77;

    .line 2
    .line 3
    invoke-interface {p0, p2, p1}, Lc77;->c(Ljv1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object p1, Lyx1;->a:Lyx1;

    .line 8
    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 13
    .line 14
    return-object p0
.end method
