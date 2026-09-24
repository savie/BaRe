.class public final synthetic Lwk;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Ljl;

.field public final synthetic b:Lkz;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljl;Lkz;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwk;->a:Ljl;

    .line 5
    .line 6
    iput-object p2, p0, Lwk;->b:Lkz;

    .line 7
    .line 8
    iput p3, p0, Lwk;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    const/16 v1, 0x63

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Ll73;->h(III)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object v0, p0, Lwk;->a:Ljl;

    .line 15
    .line 16
    iget-object v0, v0, Ljl;->a:Lc40;

    .line 17
    .line 18
    new-instance v1, Lr62;

    .line 19
    .line 20
    iget-object v2, p0, Lwk;->b:Lkz;

    .line 21
    .line 22
    check-cast v2, Lhz;

    .line 23
    .line 24
    iget-object v2, v2, Lhz;->b:Lji;

    .line 25
    .line 26
    invoke-virtual {v2}, Lji;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-direct {v1, v3, v2}, Lr62;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lpw6;->k(Lr62;)V

    .line 38
    .line 39
    .line 40
    iget p0, p0, Lwk;->c:I

    .line 41
    .line 42
    add-int/2addr p0, p1

    .line 43
    invoke-virtual {v0, p0}, Lpw6;->n(I)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lbe8;->a:Lbe8;

    .line 47
    .line 48
    return-object p0
.end method
