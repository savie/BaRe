.class public final synthetic Lp38;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lr85;


# instance fields
.field public final synthetic a:Lv38;


# direct methods
.method public synthetic constructor <init>(Lv38;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp38;->a:Lv38;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const p2, 0x7f0a0310

    .line 5
    .line 6
    .line 7
    if-ne p1, p2, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 p1, 0x0

    .line 12
    :goto_0
    iget-object p0, p0, Lp38;->a:Lv38;

    .line 13
    .line 14
    iget-object p0, p0, Lv38;->b:Lj38;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lj38;->m(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
