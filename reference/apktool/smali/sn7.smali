.class public final Lsn7;
.super Ltn7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final c:Lrx2;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lrx2;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Ltn7;-><init>(ILjava/lang/Class;)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lsn7;->c:Lrx2;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 2

    .line 1
    sget-object v0, Lx77;->y:Lx77;

    .line 2
    .line 3
    iget-object v1, p3, Lc87;->a:Lv77;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lv77;->l(Lx77;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p2, p0}, Lfk4;->u(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    check-cast p1, Ljava/lang/Enum;

    .line 20
    .line 21
    sget-object v0, Lx77;->H:Lx77;

    .line 22
    .line 23
    iget-object p3, p3, Lc87;->a:Lv77;

    .line 24
    .line 25
    invoke-virtual {p3, v0}, Lv77;->l(Lx77;)Z

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    if-eqz p3, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p2, p0}, Lfk4;->u(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget-object p0, p0, Lsn7;->c:Lrx2;

    .line 44
    .line 45
    iget-object p0, p0, Lrx2;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, [Lz77;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    aget-object p0, p0, p1

    .line 54
    .line 55
    invoke-virtual {p2, p0}, Lfk4;->r(Lz77;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
