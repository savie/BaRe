.class public final Li33;
.super Ltn7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p3, Luf2;

    .line 5
    .line 6
    iget-object p0, p3, Luf2;->G:Lpw8;

    .line 7
    .line 8
    new-instance p1, Lyk4;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    const-string p3, "Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)"

    .line 12
    .line 13
    invoke-direct {p1, p0, p3, p2}, Lyk4;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method
