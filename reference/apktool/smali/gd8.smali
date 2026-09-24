.class public abstract Lgd8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lrn1;

.field public static final b:Lrn1;

.field public static final c:Lf88;

.field public static final d:Lrn1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/BitSet;

    .line 2
    .line 3
    const/16 v1, 0x100

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/BitSet;

    .line 9
    .line 10
    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v3, Ljava/util/BitSet;

    .line 14
    .line 15
    invoke-direct {v3, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x2f

    .line 19
    .line 20
    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x23

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x3f

    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x40

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 42
    .line 43
    .line 44
    const/16 v1, 0x3a

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lrn1;

    .line 50
    .line 51
    const/4 v4, 0x7

    .line 52
    invoke-direct {v1, v3, v4}, Lrn1;-><init>(Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    sput-object v1, Lgd8;->a:Lrn1;

    .line 56
    .line 57
    new-instance v1, Lrn1;

    .line 58
    .line 59
    const/4 v3, 0x7

    .line 60
    invoke-direct {v1, v0, v3}, Lrn1;-><init>(Ljava/lang/Object;I)V

    .line 61
    .line 62
    .line 63
    sput-object v1, Lgd8;->b:Lrn1;

    .line 64
    .line 65
    new-instance v0, Lf88;

    .line 66
    .line 67
    const/16 v1, 0x5d

    .line 68
    .line 69
    invoke-direct {v0, v1}, Lf88;-><init>(C)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lgd8;->c:Lf88;

    .line 73
    .line 74
    new-instance v0, Lrn1;

    .line 75
    .line 76
    const/4 v1, 0x7

    .line 77
    invoke-direct {v0, v2, v1}, Lrn1;-><init>(Ljava/lang/Object;I)V

    .line 78
    .line 79
    .line 80
    sput-object v0, Lgd8;->d:Lrn1;

    .line 81
    .line 82
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Lsc6;Ljava/lang/String;)Ljava/net/URISyntaxException;
    .locals 3

    .line 1
    new-instance v0, Ljava/net/URISyntaxException;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget v2, p1, Lsc6;->b:I

    .line 5
    .line 6
    invoke-interface {p0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget p1, p1, Lsc6;->c:I

    .line 15
    .line 16
    invoke-direct {v0, p0, p2, p1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
