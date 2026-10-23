.class public abstract Lj3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:[Ljava/lang/Class;


# direct methods
.method public varargs constructor <init>([Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj3;->a:[Ljava/lang/Class;

    .line 5
    .line 6
    return-void
.end method

.method public static e(ILjava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/Number;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    :cond_0
    return p0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/io/InputStream;JLkk1;[BI)Ljava/io/InputStream;
.end method

.method public b(Ljava/lang/Object;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p1, "Method doesn\'t support writing"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public c(Ljava/lang/Object;)[B
    .locals 0

    .line 1
    sget-object p0, Lwx3;->a:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public d(Lkk1;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method
