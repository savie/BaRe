.class public final Lfh;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final g:Lfh;


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:I

.field public final c:I

.field public final d:[I

.field public final e:Z

.field public final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lfh;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 9
    .line 10
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-array v4, v1, [I

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    move-object v1, v2

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct/range {v0 .. v5}, Lfh;-><init>(Ljava/nio/ByteBuffer;II[IZ)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lfh;->g:Lfh;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;II[IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfh;->a:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    iput p2, p0, Lfh;->b:I

    .line 7
    .line 8
    iput p3, p0, Lfh;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lfh;->d:[I

    .line 11
    .line 12
    iput-boolean p5, p0, Lfh;->e:Z

    .line 13
    .line 14
    array-length p1, p4

    .line 15
    new-array p1, p1, [Ljava/lang/String;

    .line 16
    .line 17
    iput-object p1, p0, Lfh;->f:[Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method
