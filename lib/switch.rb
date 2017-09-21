module Switch
  class SimpleSwitch
    def initialize
      @state = false
    end

    # @return [Boolean]
    def toggle
      @state = !@state
    end

    # @return [Boolean]
    def is_opened?
      @state
    end

    # @return [Boolean]
    def is_closed?
      !is_opened?
    end
  end
end
