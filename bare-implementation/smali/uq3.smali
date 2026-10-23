.class public final Luq3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput p2, p0, Luq3;->a:I

    .line 11
    .line 12
    iput p3, p0, Luq3;->b:I

    .line 13
    .line 14
    iput-object p1, p0, Luq3;->c:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p4, p0, Luq3;->d:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Luq3;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget v0, p0, Luq3;->a:I

    .line 7
    .line 8
    iget v1, p1, Luq3;->a:I

    .line 9
    .line 10
    sub-int/2addr v0, v1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget p0, p0, Luq3;->b:I

    .line 14
    .line 15
    iget p1, p1, Luq3;->b:I

    .line 16
    .line 17
    sub-int/2addr p0, p1

    .line 18
    return p0

    .line 19
    :cond_0
    return v0
.end method
