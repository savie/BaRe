.class public final Lme8;
.super Lrx1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final c:Lme8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lme8;

    .line 2
    .line 3
    invoke-direct {v0}, Lrx1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lme8;->c:Lme8;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final j(Lox1;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    sget-object p0, Lrf2;->d:Lrf2;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iget-object p0, p0, Lrf2;->c:Lwx1;

    .line 5
    .line 6
    invoke-virtual {p0, p2, p1}, Lwx1;->b(Ljava/lang/Runnable;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final n(I)Lrx1;
    .locals 1

    .line 1
    invoke-static {p1}, Lzm5;->f(I)V

    .line 2
    .line 3
    .line 4
    sget v0, Ljz7;->d:I

    .line 5
    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lrx1;->n(I)Lrx1;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Dispatchers.IO"

    .line 2
    .line 3
    return-object p0
.end method
