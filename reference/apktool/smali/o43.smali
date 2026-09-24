.class public final Lo43;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lq43;


# instance fields
.field public final a:Lq43;


# direct methods
.method public constructor <init>(Lq43;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo43;->a:Lq43;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;Ljava/util/Calendar;)V
    .locals 2

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne p2, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    add-int/lit8 v0, p2, -0x1

    .line 11
    .line 12
    :goto_0
    iget-object p0, p0, Lo43;->a:Lq43;

    .line 13
    .line 14
    invoke-interface {p0, v0, p1}, Lq43;->b(ILjava/lang/StringBuilder;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final b(ILjava/lang/StringBuilder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lo43;->a:Lq43;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lq43;->b(ILjava/lang/StringBuilder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c()I
    .locals 0

    .line 1
    iget-object p0, p0, Lo43;->a:Lq43;

    .line 2
    .line 3
    invoke-interface {p0}, Ls43;->c()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
