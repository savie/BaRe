.class public final Li67;
.super Ljava/lang/Object;


# instance fields
.field public final a:[B

.field public final b:[B

.field public final c:Lhl2;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>([B[BLhl2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li67;->a:[B

    .line 5
    .line 6
    iput-object p2, p0, Li67;->b:[B

    .line 7
    .line 8
    iput-object p3, p0, Li67;->c:Lhl2;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(IZ[B)V
    .locals 4

    .line 1
    array-length v0, p3

    .line 2
    sub-int/2addr v0, p1

    .line 3
    iget-object v1, p0, Li67;->c:Lhl2;

    .line 4
    .line 5
    invoke-interface {v1}, Lhl2;->c()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-lt v0, v2, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Li67;->a:[B

    .line 12
    .line 13
    array-length v2, v0

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-interface {v1, v0, v3, v2}, Lhl2;->update([BII)V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Li67;->d:I

    .line 19
    .line 20
    ushr-int/lit8 v0, v0, 0x18

    .line 21
    .line 22
    int-to-byte v0, v0

    .line 23
    invoke-interface {v1, v0}, Lhl2;->a(B)V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Li67;->d:I

    .line 27
    .line 28
    ushr-int/lit8 v0, v0, 0x10

    .line 29
    .line 30
    int-to-byte v0, v0

    .line 31
    invoke-interface {v1, v0}, Lhl2;->a(B)V

    .line 32
    .line 33
    .line 34
    iget v0, p0, Li67;->d:I

    .line 35
    .line 36
    ushr-int/lit8 v0, v0, 0x8

    .line 37
    .line 38
    int-to-byte v0, v0

    .line 39
    invoke-interface {v1, v0}, Lhl2;->a(B)V

    .line 40
    .line 41
    .line 42
    iget v0, p0, Li67;->d:I

    .line 43
    .line 44
    int-to-byte v0, v0

    .line 45
    invoke-interface {v1, v0}, Lhl2;->a(B)V

    .line 46
    .line 47
    .line 48
    iget v0, p0, Li67;->e:I

    .line 49
    .line 50
    ushr-int/lit8 v0, v0, 0x8

    .line 51
    .line 52
    int-to-byte v0, v0

    .line 53
    invoke-interface {v1, v0}, Lhl2;->a(B)V

    .line 54
    .line 55
    .line 56
    iget v0, p0, Li67;->e:I

    .line 57
    .line 58
    int-to-byte v0, v0

    .line 59
    invoke-interface {v1, v0}, Lhl2;->a(B)V

    .line 60
    .line 61
    .line 62
    const/4 v0, -0x1

    .line 63
    invoke-interface {v1, v0}, Lhl2;->a(B)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Li67;->b:[B

    .line 67
    .line 68
    array-length v2, v0

    .line 69
    invoke-interface {v1, v0, v3, v2}, Lhl2;->update([BII)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v1, p3, p1}, Lhl2;->doFinal([BI)I

    .line 73
    .line 74
    .line 75
    if-eqz p2, :cond_0

    .line 76
    .line 77
    iget p1, p0, Li67;->e:I

    .line 78
    .line 79
    add-int/lit8 p1, p1, 0x1

    .line 80
    .line 81
    iput p1, p0, Li67;->e:I

    .line 82
    .line 83
    :cond_0
    return-void

    .line 84
    :cond_1
    const-string p0, "target length is less than digest size."

    .line 85
    .line 86
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
