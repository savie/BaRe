.class public abstract Lpr1;
.super Lh23;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lor1;


# instance fields
.field public a:Ljava/util/regex/Pattern;

.field public b:Ljava/util/regex/MatchResult;

.field public c:Ljava/util/regex/Matcher;

.field public final d:Lp23;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x20

    .line 5
    .line 6
    const-string v1, "(\\S+)\\s+(\\S+)\\s+(?:(<DIR>)|([0-9]+))\\s+(\\S.*)"

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lpr1;->e(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lp23;

    .line 12
    .line 13
    invoke-direct {v0}, Lp23;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lpr1;->d:Lp23;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0, p1}, Lpr1;->e(ILjava/lang/String;)V

    .line 21
    new-instance p1, Lp23;

    invoke-direct {p1}, Lp23;-><init>()V

    iput-object p1, p0, Lpr1;->d:Lp23;

    return-void
.end method


# virtual methods
.method public final a(Le23;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lpr1;->d:Lp23;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Lpr1;->f()Le23;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget-object v1, p1, Le23;->b:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Le23;->b:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v1, p1, Le23;->b:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    iget-object v1, p1, Le23;->c:Ljava/lang/String;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iget-object p0, p0, Le23;->c:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p0, p1, Le23;->c:Ljava/lang/String;

    .line 26
    .line 27
    :cond_1
    invoke-virtual {v0, p1}, Lp23;->a(Le23;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    invoke-virtual {v0, p0}, Lp23;->a(Le23;)V

    .line 32
    .line 33
    .line 34
    :cond_3
    return-void
.end method

.method public final e(ILjava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p2, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lpr1;->a:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    return-void

    .line 8
    :catch_0
    const-string p0, "Unparseable regex supplied: "

    .line 9
    .line 10
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public abstract f()Le23;
.end method

.method public final g(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lpr1;->b:Ljava/util/regex/MatchResult;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpr1;->b:Ljava/util/regex/MatchResult;

    .line 3
    .line 4
    iget-object v0, p0, Lpr1;->a:Ljava/util/regex/Pattern;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lpr1;->c:Ljava/util/regex/Matcher;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lpr1;->c:Ljava/util/regex/Matcher;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lpr1;->b:Ljava/util/regex/MatchResult;

    .line 25
    .line 26
    :cond_0
    iget-object p0, p0, Lpr1;->b:Ljava/util/regex/MatchResult;

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return p0
.end method
