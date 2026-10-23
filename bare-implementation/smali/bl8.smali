.class public abstract Lbl8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Landroid/view/View;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getReceiveContentMimeTypes()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static b(Landroid/view/View;Lqu1;)Lqu1;
    .locals 1

    .line 1
    iget-object v0, p1, Lqu1;->a:Lou1;

    .line 2
    .line 3
    invoke-interface {v0}, Lou1;->c()Landroid/view/ContentInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->performReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    :cond_0
    if-ne p0, v0, :cond_1

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_1
    new-instance p1, Lqu1;

    .line 22
    .line 23
    new-instance v0, Lnu1;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lnu1;-><init>(Landroid/view/ContentInfo;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v0}, Lqu1;-><init>(Lou1;)V

    .line 29
    .line 30
    .line 31
    return-object p1
.end method
