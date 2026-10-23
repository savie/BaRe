.class public final Ln54;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Lm54;


# direct methods
.method public constructor <init>(Lm54;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln54;->a:Lm54;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget-object p0, p0, Ln54;->a:Lm54;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lm54;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    check-cast p1, Ls54;

    .line 11
    .line 12
    iget-object p0, p1, Ls54;->d:Ljava/lang/String;

    .line 13
    .line 14
    const-string p1, ""

    .line 15
    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    move-object p0, p1

    .line 19
    :cond_1
    check-cast p2, Ls54;

    .line 20
    .line 21
    iget-object p2, p2, Ls54;->d:Ljava/lang/String;

    .line 22
    .line 23
    if-nez p2, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    move-object p1, p2

    .line 27
    :goto_0
    sget-object p2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 28
    .line 29
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method
