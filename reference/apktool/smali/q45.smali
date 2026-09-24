.class public final Lq45;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field public final a:[B

.field public final b:[B

.field public final c:Ln45;

.field public final d:Z


# direct methods
.method public constructor <init>(Ln45;[B)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p2

    .line 5
    const/16 v1, 0x40

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lq45;->d:Z

    .line 12
    .line 13
    iput-object p1, p0, Lq45;->c:Ln45;

    .line 14
    .line 15
    invoke-static {p2}, Lms8;->k([B)[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lq45;->a:[B

    .line 20
    .line 21
    iput-object v2, p0, Lq45;->b:[B

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string p0, "incorrect length for seed"

    .line 25
    .line 26
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v2
.end method

.method public constructor <init>(Ln45;[B[B)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq45;->d:Z

    iput-object p1, p0, Lq45;->c:Ln45;

    invoke-static {p2}, Lms8;->k([B)[B

    move-result-object p1

    iput-object p1, p0, Lq45;->a:[B

    invoke-static {p3}, Lms8;->k([B)[B

    move-result-object p1

    iput-object p1, p0, Lq45;->b:[B

    return-void
.end method
