.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"

# interfaces
.implements Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityRecordStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public obtain()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public setFromIndex(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "fromIndex"    # I

    .prologue
    .line 211
    return-void
.end method

.method public setItemCount(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "itemCount"    # I

    .prologue
    .line 219
    return-void
.end method

.method public setScrollable(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "scrollable"    # Z

    .prologue
    .line 251
    return-void
.end method

.method public setToIndex(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "record"    # Ljava/lang/Object;
    .param p2, "toIndex"    # I

    .prologue
    .line 263
    return-void
.end method
