.class public final Lu75;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/util/regex/Matcher;

.field public final b:Ljava/lang/CharSequence;

.field public final c:Lt75;

.field public d:Ls75;


# direct methods
.method public constructor <init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lu75;->a:Ljava/util/regex/Matcher;

    .line 8
    .line 9
    iput-object p2, p0, Lu75;->b:Ljava/lang/CharSequence;

    .line 10
    .line 11
    new-instance p1, Lt75;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lt75;-><init>(Lu75;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lu75;->c:Lt75;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lu75;->d:Ls75;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ls75;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Ls75;-><init>(Lu75;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lu75;->d:Ls75;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lu75;->d:Ls75;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public final b()Lnd4;
    .locals 1

    .line 1
    iget-object p0, p0, Lu75;->a:Ljava/util/regex/Matcher;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {v0, p0}, Ll73;->F(II)Lnd4;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
