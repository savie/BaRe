.class public final synthetic Lw38;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lr85;


# instance fields
.field public final synthetic a:Lcom/google/android/material/timepicker/TimePickerView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/timepicker/TimePickerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw38;->a:Lcom/google/android/material/timepicker/TimePickerView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget p0, Lcom/google/android/material/timepicker/TimePickerView;->Q:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lw38;->a:Lcom/google/android/material/timepicker/TimePickerView;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/google/android/material/timepicker/TimePickerView;->N:Lm38;

    .line 9
    .line 10
    if-eqz p0, :cond_2

    .line 11
    .line 12
    const p2, 0x7f0a0310

    .line 13
    .line 14
    .line 15
    if-ne p1, p2, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    :goto_0
    iget-object p0, p0, Lm38;->b:Lj38;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lj38;->m(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    return-void
.end method
