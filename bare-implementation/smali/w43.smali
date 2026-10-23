.class public final Lw43;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ls43;


# instance fields
.field public final a:Ljava/util/Locale;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/util/Locale;Ljava/util/TimeZone;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lk05;->a:I

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    move-object v0, p2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    iput-object v0, p0, Lw43;->a:Ljava/util/Locale;

    .line 15
    .line 16
    iput p1, p0, Lw43;->b:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-static {p3, v0, p1, p2}, Lg53;->c(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lw43;->c:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-static {p3, v0, p1, p2}, Lg53;->c(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lw43;->d:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;Ljava/util/Calendar;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p2, 0x0

    .line 16
    :goto_0
    iget v1, p0, Lw43;->b:I

    .line 17
    .line 18
    iget-object p0, p0, Lw43;->a:Ljava/util/Locale;

    .line 19
    .line 20
    invoke-static {v0, p2, v1, p0}, Lg53;->c(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw43;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object p0, p0, Lw43;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method
