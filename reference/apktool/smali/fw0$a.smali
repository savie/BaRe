.class public abstract Lfw0$a;
.super Lll0$a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfw0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lfw0$a<",
        "TB;TA;>;A:",
        "Lfw0;",
        ">",
        "Lll0$a<",
        "TB;TA;>;"
    }
.end annotation


# static fields
.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field protected b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "^[a-z0-9][a-z0-9\\.\\-]{1,61}[a-z0-9]$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lfw0$a;->c:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lll0$a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lfw0$a;->b:Z

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic n(Ljava/lang/String;Lfw0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lfw0$a;->r(Ljava/lang/String;Lfw0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o(Ljava/lang/String;Lfw0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lfw0$a;->q(Ljava/lang/String;Lfw0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic q(Ljava/lang/String;Lfw0;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lfw0;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private static synthetic r(Ljava/lang/String;Lfw0;)V
    .locals 0

    .line 1
    iput-object p0, p1, Lfw0;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private w(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lfw0$a;->b:Z

    .line 2
    .line 3
    if-nez p0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    sget-object p0, Lki8;->g:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p0, "invalid region "

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic m(Lll0;)V
    .locals 0

    .line 1
    check-cast p1, Lfw0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfw0$a;->u(Lfw0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p(Ljava/lang/String;)Lfw0$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfw0$a;->v(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 5
    .line 6
    new-instance v1, Lew0;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p1, v2}, Lew0;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public s(Ljava/lang/String;)Lfw0$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lfw0$a;->w(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lll0$a;->a:Ljava/util/List;

    .line 5
    .line 6
    new-instance v1, Ldw0;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p1, v2}, Ldw0;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public t(Z)Lfw0$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lfw0$a;->b:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public u(Lfw0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lfw0;->d:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfw0$a;->v(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "bucket name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lki8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p0, p0, Lfw0$a;->b:Z

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object p0, Lfw0$a;->c:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const-string v0, "bucket name \'"

    .line 22
    .line 23
    if-eqz p0, :cond_3

    .line 24
    .line 25
    sget-object p0, Lki8$a;->b:Lki8$a;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lki8$a;->a(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_2

    .line 32
    .line 33
    const-string p0, ".."

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    const-string p0, ".-"

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_1

    .line 48
    .line 49
    const-string p0, "-."

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_1

    .line 56
    .line 57
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string p0, "\' cannot contain successive characters \'..\', \'.-\' and \'-.\'"

    .line 59
    .line 60
    invoke-static {v0, p1, p0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    const-string p0, "\' must not be formatted as an IP address"

    .line 69
    .line 70
    invoke-static {v0, p1, p0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    const-string p0, "\' does not follow Amazon S3 standards. For more information refer https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html"

    .line 79
    .line 80
    invoke-static {v0, p1, p0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
